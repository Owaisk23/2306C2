import React from "react";
import { useEffect } from "react";                     
import { useState } from "react";

const ApiFetch = () => {
  //useState
  const [count, setCount] = useState(0);

  //useEffect
  useEffect(() => {
    console.log("UseEffect Called");
    fetchData();
  },[]);

  //functions
  const fetchData = async () => {
    try {
      const response = await fetch("https://dummyjson.com/products");
    const data = await response.json();
    console.log(data);
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  }

  return (
    <>
      <h1>UseEffect Hook</h1>
      <button
        className="btn btn-warning"
        onClick={() => {
          setCount(count + 1);
        }}
      >
        Increment({count})
      </button>
    </>
  );
};

export default ApiFetch;
