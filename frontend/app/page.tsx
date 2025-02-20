"use client";

export default function Home() {
  let npcJson = {
    name: "Thalwin Ironbranch",
    race: "Dwarf",
    occupation: "Blacksmith",
  };
  const submitNpc = async () => {
    try {
      const response = await fetch(
        "http://localhost:4000/npc",
        {
          method: "POST",
          headers: {
            "Content-Type": "applications/json",
          },
          body: JSON.stringify(npcJson),
        }
      );
      const result = await response.json();
      console.log("Server Response:", result);
    } catch (error) {
      console.log("Error:", error);
    }
  };
  return (
    <div>
      <div>sup, this is {JSON.stringify(npcJson)} </div>
      <button onClick={submitNpc}>Submit NPC</button>
    </div>
  );
}
