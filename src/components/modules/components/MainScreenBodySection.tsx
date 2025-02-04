import { ReactNode } from 'react';

function MainScreenBodySection({
  title,
  children,
}: {
  title: string,
  children: ReactNode,
}) {
  return (
    <div className={'flex flex-col items-center gap-2'}>
      <h1 className={'text-[32px] font-semibold'}>{title}</h1>
      {children}
    </div>
  );
}

export default MainScreenBodySection;