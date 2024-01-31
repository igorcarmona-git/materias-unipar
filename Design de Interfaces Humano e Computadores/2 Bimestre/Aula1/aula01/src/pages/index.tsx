import React from "react";

function Header({ title }) {
  return <h1 className="flex items-center justify-center text-3xl m-4">{title}</h1>;
}

export default function Home() {
  return (
    <div>
      <Header title="Tela de login" />
    </div>
  );
}
