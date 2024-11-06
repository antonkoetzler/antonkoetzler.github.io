import DirectionEnum from '../enums/direction_enum'
import '../css/divider.css';

const Divider = ({
  direction
}: {
  direction: DirectionEnum,
}) => {
  const shortValue = 2;
  const isHorizontal = DirectionEnum.isHorizontal(direction);

  return (
    <div
      className='divider'
      style={{
        width: isHorizontal ? '100%' : shortValue,
        height: isHorizontal ? shortValue : '100%',
      }}
    />
  );
};

export default Divider;