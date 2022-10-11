import Sortable from 'sortablejs';

const initBoardSortable = (ulElements) => {
  ulElements.forEach((ul) => {
    new Sortable(ul, {
        dataIdAttr: 'data-id',
        group: 'board', // set both lists to same group
        draggable: ".item",
        animation: 300
    });
  });
};

export { initBoardSortable };
