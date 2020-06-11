const ajaxLikes = () => {
  const likes = document.querySelectorAll('.like-buttons')
  likes.forEach((like) => {
    like.addEventListener('click',(event) => {
      const liked = like.querySelector('i');
      liked.classList.toggle('fas');
      liked.classList.toggle('far');
      const likeState = liked.classList.contains('fas')
      const likeCount= like.querySelector('p');

      let count = Number(likeCount.innerText)

      if (likeState) {
        count += 1;
      } else {
        count -= 1;
      }
      likeCount.innerText = count;
    });
  });
};

export { ajaxLikes };
