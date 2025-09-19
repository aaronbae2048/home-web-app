import * as React from 'react';
import * as ReactDOM from 'react-dom/client';
import TestingPage from './TestingPage';

const rootElement: HTMLElement | null = document.getElementById('root');
const root: ReactDOM.Root = ReactDOM.createRoot(rootElement!);

root.render(<TestingPage />);

declare const LIVE_RELOAD: string;
if (LIVE_RELOAD) {
    console.log('Live reload enabled');
    new EventSource('/esbuild').addEventListener('change', () => location.reload());
}