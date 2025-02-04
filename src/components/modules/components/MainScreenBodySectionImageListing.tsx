import { ReactNode } from 'react';

function MainScreenBodySectionImageListing({
  children,
}: {
  children: ReactNode,
}) {
  return (
    <div className='flex flex-row flex-wrap gap-4 justify-center'>
      {children}
    </div>
  );
}

export default MainScreenBodySectionImageListing;