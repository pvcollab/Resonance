@ECHO OFF
SET DXC="F:\Programs Folder\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "F:\Programs Folder\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality /T vs_6_6 /E Main /Fc HitProxyVertexShader.d3dasm /Fo HitProxyVertexShader.dxil HitProxyVertexShader.usf
:END
PAUSE
