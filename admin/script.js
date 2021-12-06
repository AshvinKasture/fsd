let globalDataObject = { load: false, rowCounter: 0 };

$(document).ready(() => {
  window.addEventListener(
    'scroll',
    (scrollEvent) => {
      if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
        console.log('scroll');
        setUnsetScroll();
      }
    },
    true
  );
  setUnsetScroll();
});

const setUnsetScroll = () => {
  if (!globalDataObject.load) {
    globalDataObject.load = true;
    fetchBlogs(globalDataObject.rowCounter);
    setTimeout(() => {
      globalDataObject.load = false;
    }, 1000);
  }
};

const fetchBlogs = (startCounter) => {
  console.log('fetch', startCounter);
  $.post(
    'http://localhost/fsd/blogs/get_blogs.php',
    { startCounter },
    (data) => {
      setTimeout(() => {
        data = JSON.parse(data);
        if (data.length == 0) {
          console.log('hiding spinner container');
          $('#spinner-container').hide();
        }
        data.forEach((blogItem) => {
            console.log(blogItem.timestamp)
            let date = new Date(blogItem.timestamp).toLocaleDateString("en-US",{month: 'long', day:'numeric', year:'numeric'})
          let blogCol = `<div class="col my-3">
                <a href="./blog?id=${blogItem.no}" class="card-link">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title blog-title">${blogItem.title}</h5>
                            <h6 class="card-subtitle mb-2 text-muted">${date}</h6>
                            <p class="card-text">${blogItem.short_description}</p>
                            <!-- <a href="./edit/" class="card-link">Edit</a>-->\
                            <div class="row mt-3 mb-2">
                                <a href="#" class="btn btn-warning col col-4 mx-2">Edit</a>
                                <a href="#" class="btn btn-danger col col-4 mx-1">Delete</a>
                            </div>
                        </div>
                    </div>
                </a>
            </div>`;
          $('#blog-row').append(blogCol);
        });
        globalDataObject.rowCounter += 20;
      }, 1000);
    }
  );
};
