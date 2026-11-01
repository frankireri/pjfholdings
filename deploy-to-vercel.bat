@echo off
title Deploy PJF Holdings to Vercel Production
echo =======================================================
echo   Deploying PJF Holdings Website to Vercel
echo =======================================================
echo.
echo Running Vercel deployment...
echo.
npx vercel --prod
echo.
echo =======================================================
echo   Deployment process complete!
echo =======================================================
pause
