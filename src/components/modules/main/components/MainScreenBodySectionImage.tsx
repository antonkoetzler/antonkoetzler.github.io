function MainScreenBodySectionImage({ path }: { path: string }) {
  const size = 50.0;

  return (
    <img
      src={path}
      width={size}
      height={size}
      className={'object-contain'}
    />
  );
}

export default MainScreenBodySectionImage;