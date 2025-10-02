import { StrictMode } from "react";
import { createRoot } from "react-dom/client";

import App from "./App.jsx";
import ContextProvider from "./context.jsx";
import AppLayout from "./AppLayout.jsx";
import { createBrowserRouter } from "react-router";
import { RouterProvider } from "react-router/dom";
import ThirdComponent from "./ThirdComponent.jsx";
// const router = createBrowserRouter([
//   {
//     path: "/",
//     element: <AppLayout />,
//     children: [
//       {
//         index: true,
//         element: <App />,
//       },
//       {
//         path: "/second",
//         element:<ThirdComponent />,
//       },
//     ],
//   },
// ]);
createRoot(document.getElementById("root")).render(
  // <StrictMode>
  <ContextProvider>
      {/* <RouterProvider router={router} /> */}
    <App />
    </ContextProvider>
  // </StrictMode>,
);
