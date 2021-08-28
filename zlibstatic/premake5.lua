project "zlibstatic"
	warnings 'Off'
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

    targetdir ( "bin/" .. outputdir .. "/%{prj.name}" )
    objdir ( "bin-int/" .. outputdir .. "/%{prj.name}" )

	includedirs {
		'../contrib/zlib/',
		'../contrib/unzip/',
		'../code'
	}
	files {
		'../contrib/zlib/*',
		'../contrib/unzip/**',
	}

	filter "system:windows"
		systemversion "latest"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"