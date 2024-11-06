import '../css/button.css';

const Button = ({
  text,
  padding,
}: {
  text: string,
  padding?: number,
}) => {
  return (
    <div className='button' style={{ padding: padding }}>
      <p>{text}</p>
    </div>
  );
};

export default Button;