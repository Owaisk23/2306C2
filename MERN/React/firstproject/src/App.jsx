import Footer from "./components/Footer";
import MyName from "./components/MyName";
import Navbar from "./components/Navbar";

function App() {
  return (
    <>
      <Navbar />
      <h1 className="heading">Hello in React JS</h1>
      <MyName />
      <MyName />
      <MyName />
      <MyName />

      <Footer/>
    </>
  );
}

export default App;
