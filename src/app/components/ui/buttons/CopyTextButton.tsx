import { useState } from 'react';
import { Button } from '@/app/components/ui/buttons/Button';
import { ClipboardIcon } from '@heroicons/react/16/solid';

function CopyTextButton({ text }: { text: string }) {
  const [isActive, setIsActive] = useState(false);

  const handleClick = () => {
    navigator.clipboard.writeText(text);
    setIsActive(true);
    setTimeout(() => setIsActive(false), 1000);
  };

  return (
    <Button className="h-[25px] p-1" onClick={handleClick}>
      <ClipboardIcon
        className={`transition-colors duration-300 ${
          isActive ? 'text-blue-400' : ''
        }`}
      />
    </Button>
  );
}

export default CopyTextButton;
