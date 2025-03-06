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
    <a
      href={src}
      target={'_blank'}
      rel={'noopener noreferrer'}
      className={'flex align-middle'}
    >
      <img
        src={src}
        alt={alt}
        title={alt}
        width={size}
        height={size}
        className={'object-contain'}
      />
    </a>
  );
}

export default MainScreenBodySectionImage;
