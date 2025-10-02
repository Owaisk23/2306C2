export const reducer = (state, action) => {
  switch (action.type) {

    case "NAME_CHANGE": {
        if(action.payload === "") {
            return {...state, name: "Owais Ahmed"}
        }

        return {...state, name: action.payload}
    }


    default: {
      return state;
    }
  }
};