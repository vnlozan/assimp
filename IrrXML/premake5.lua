project "IrrXML"
	warnings 'Off'
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

    targetdir ( "bin/" .. outputdir .. "/%{prj.name}" )
    objdir ( "bin-int/" .. outputdir .. "/%{prj.name}" )

	includedirs {
		'../contrib/',
		'../contrib/zlib/',
		'../contrib/irrXML/',
		'../contrib/unzip/',
		'../contrib/rapidjson/include/',
		'../code'
	}
	files {
		'../contrib/unzip/**',
		'../contrib/irrXML/**',
		'../contrib/zlib/*',
	}

	filter "system:windows"
		systemversion "latest"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"