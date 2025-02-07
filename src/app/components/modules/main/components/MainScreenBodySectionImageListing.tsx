import { ReactNode } from 'react';

function MainScreenBodySectionImageListing({
  children,
}: {
  children: ReactNode;
}) {
  return (
    <div className='flex flex-row flex-wrap justify-center gap-4'>
      {children}
    </div>
  );
}

export default MainScreenBodySectionImageListing;
