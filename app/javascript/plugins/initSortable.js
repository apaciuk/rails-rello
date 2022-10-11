import Sortable from 'sortablejs';

const initBoardSortable = (ulElements) => {
  ulElements.forEach((ul) => {
    new Sortable(ul, {
        group: 'board', // set both lists to same group
        animation: 300
    });
  });
};

export { initBoardSortable };
