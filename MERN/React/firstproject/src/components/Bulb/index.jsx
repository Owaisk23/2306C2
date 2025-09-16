import React from "react";
import onBulb from "../../assets/bulbOn.png";
import offBulb from "../../assets/bulbOff.png";
import { useState } from "react";

const Bulb = () => {
  const [isOn, setIsOn] = useState(true);
  return (
    <div>
      <h1>Bulb is {isOn ? "On" : "Off"}</h1>
      <button className="btn btn-primary" onClick={() => setIsOn(!isOn)}>
        Toggle
      </button>
      {isOn ? (
        <div className="img-container">
          <img src={onBulb} alt="" width={250} height={400}/>
        </div>
      ) : (
        <div className="img-container">
          <img src={offBulb} alt="" width={250} height={400} />
        </div>
      )}
    </div>
  );
};

export default Bulb;
