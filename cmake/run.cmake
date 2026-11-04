# cmake/run.cmake

function(create_run_target app)
    if(TARGET run)
        return()
    endif()

    if(TARGET ${app})
        add_custom_target(run
            COMMAND $<TARGET_FILE:${app}>
            DEPENDS ${app}
            COMMENT "Executando o aplicativo ${app}..."
            USES_TERMINAL
            VERBATIM
        )
    else()
        message(WARNING "Target '${app}' nao encontrado. O target 'run' nao foi criado.")
    endif()
endfunction()

# Adia a criação do target para o final da configuração do CMake
cmake_language(DEFER CALL create_run_target "${APP_NAME}")
