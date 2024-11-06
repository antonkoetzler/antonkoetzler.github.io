enum DirectionEnum {
  horizontal,
  vertical,
}

namespace DirectionEnum {
  export const isHorizontal = (directionEnum: DirectionEnum) => {
    return directionEnum === DirectionEnum.horizontal;
  }
}

export default DirectionEnum;