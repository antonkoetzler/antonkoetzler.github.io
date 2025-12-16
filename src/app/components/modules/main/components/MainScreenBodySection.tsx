import { ReactNode } from 'react';

function MainScreenBodySection({
  title,
  children,
}: {
  title: string;
  children: ReactNode;
}) {
  return (
    <div className={'flex w-full flex-col items-center gap-4'}>
      <p className={'text-[28px] font-semibold leading-5'}>{title}</p>
      {children}
    </div>
  );
}

export default MainScreenBodySection;
