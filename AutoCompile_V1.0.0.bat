@echo off  
setlocal  
  
REM 设置E2 Studio的eclipsec.exe路径和项目路径  
set ECLIPSE_PATH="C:\Renesas\RA\e2studio_v2021-01_fsp_v2.3.0\eclipse\eclipsec.exe"  
set WORKSPACE_PATH="C:\Users\kgooer\e2_studio\workspace"  
set PROJECT_NAME="RA_BMU-L3716-2_LED"  
set OUTPUT_DIR="%WORKSPACE_PATH%\%PROJECT_NAME%\Debug"    
  
REM 显示开始构建的消息  
echo Starting build process for %PROJECT_NAME%...  
  
REM 使用Eclipse命令行工具（注意：这里使用的是假设的命令，实际可能需要根据E2 Studio的文档调整）  
%ECLIPSE_PATH% -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data %WORKSPACE_PATH% -build %PROJECT_NAME%  
REM 注意：上面的命令可能不是有效的，因为E2 Studio可能不直接支持这种无头构建方式。  
REM 通常，你可能需要直接运行E2 Studio的GUI，或者使用其他工具来触发构建。  
REM 这里只是为了演示如何添加消息。  
  
REM 显示构建完成的消息，并输出SREC和HEX文件的预期位置  
echo Build process completed.  
echo SREC and HEX files are expected to be in: %OUTPUT_DIR%  
  
REM 如果需要，可以在这里添加命令来检查或处理生成的文件  
REM 例如，使用dir命令列出目录内容  
echo Listing contents of output directory:  
dir "%OUTPUT_DIR%"  
  
endlocal
pause 