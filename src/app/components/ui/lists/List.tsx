function List({ items }: { items: string[] }) {
  return (
    <ul className="list-none">
      {items.map((fact: string, index) => (
        <p key={index}>- {fact}</p>
      ))}
    </ul>
  );
}

export default List;
