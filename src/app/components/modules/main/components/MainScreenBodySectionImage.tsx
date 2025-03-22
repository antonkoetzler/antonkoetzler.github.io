function MainScreenBodySectionImage({
  src,
  alt,
  size = 50,
}: {
  src: string,
  alt: string,
  size?: number,
}) {
  return (
    <img
      src={src}
      alt={alt}
      title={alt}
      width={size}
      height={size}
      className={'object-contain'}
    />
  );
}

export default MainScreenBodySectionImage;
