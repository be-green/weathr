#' Styles to use for nightfall
nightfall_styles = list(`#125A56` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#BBBBBB` = list(open = "\033[38;5;249m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#BBBBBB` = list(open = "\033[38;5;249m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#125A56` = list(open = "\033[48;5;30m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#125A56` = list(open = "\033[48;5;30m", close = "\033[49m",
        palette = NULL))))), `#00767B` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#ACACAC` = list(open = "\033[38;5;248m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#ACACAC` = list(open = "\033[38;5;248m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#00767B` = list(open = "\033[48;5;30m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#00767B` = list(open = "\033[48;5;30m", close = "\033[49m",
        palette = NULL))))), `#238F9D` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#8F8F8F` = list(open = "\033[38;5;245m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#8F8F8F` = list(open = "\033[38;5;245m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#238F9D` = list(open = "\033[48;5;37m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#238F9D` = list(open = "\033[48;5;37m", close = "\033[49m",
        palette = NULL))))), `#42A7C6` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#737373` = list(open = "\033[38;5;242m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#737373` = list(open = "\033[38;5;242m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#42A7C6` = list(open = "\033[48;5;74m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#42A7C6` = list(open = "\033[48;5;74m", close = "\033[49m",
        palette = NULL))))), `#60BCE9` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#595959` = list(open = "\033[38;5;240m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#595959` = list(open = "\033[38;5;240m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#60BCE9` = list(open = "\033[48;5;117m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#60BCE9` = list(open = "\033[48;5;117m", close = "\033[49m",
        palette = NULL))))), `#9DCCEF` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#3D3D3D` = list(open = "\033[38;5;238m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#3D3D3D` = list(open = "\033[38;5;238m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#9DCCEF` = list(open = "\033[48;5;153m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#9DCCEF` = list(open = "\033[48;5;153m", close = "\033[49m",
        palette = NULL))))), `#C6DBED` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#282828` = list(open = "\033[38;5;236m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#282828` = list(open = "\033[38;5;236m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#C6DBED` = list(open = "\033[48;5;195m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#C6DBED` = list(open = "\033[48;5;195m", close = "\033[49m",
        palette = NULL))))), `#DEE6E7` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#1B1B1B` = list(open = "\033[38;5;234m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#1B1B1B` = list(open = "\033[38;5;234m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#DEE6E7` = list(open = "\033[48;5;253m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#DEE6E7` = list(open = "\033[48;5;253m", close = "\033[49m",
        palette = NULL))))), `#ECEADA` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#161616` = list(open = "\033[38;5;234m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#161616` = list(open = "\033[38;5;234m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#ECEADA` = list(open = "\033[48;5;253m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#ECEADA` = list(open = "\033[48;5;253m", close = "\033[49m",
        palette = NULL))))), `#F0E6B2` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#1C1C1C` = list(open = "\033[38;5;235m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#1C1C1C` = list(open = "\033[38;5;235m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#F0E6B2` = list(open = "\033[48;5;230m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#F0E6B2` = list(open = "\033[48;5;230m", close = "\033[49m",
        palette = NULL))))), `#F9D576` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#2A2A2A` = list(open = "\033[38;5;236m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#2A2A2A` = list(open = "\033[38;5;236m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#F9D576` = list(open = "\033[48;5;222m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#F9D576` = list(open = "\033[48;5;222m", close = "\033[49m",
        palette = NULL))))), `#FFB954` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#3D3D3D` = list(open = "\033[38;5;238m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#3D3D3D` = list(open = "\033[38;5;238m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#FFB954` = list(open = "\033[48;5;221m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#FFB954` = list(open = "\033[48;5;221m", close = "\033[49m",
        palette = NULL))))), `#FD9A44` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#515151` = list(open = "\033[38;5;239m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#515151` = list(open = "\033[38;5;239m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#FD9A44` = list(open = "\033[48;5;215m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#FD9A44` = list(open = "\033[48;5;215m", close = "\033[49m",
        palette = NULL))))), `#F57634` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#6B6B6B` = list(open = "\033[38;5;242m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#6B6B6B` = list(open = "\033[38;5;242m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#F57634` = list(open = "\033[48;5;209m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#F57634` = list(open = "\033[48;5;209m", close = "\033[49m",
        palette = NULL))))), `#E94C1F` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#898989` = list(open = "\033[38;5;244m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#898989` = list(open = "\033[38;5;244m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#E94C1F` = list(open = "\033[48;5;202m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#E94C1F` = list(open = "\033[48;5;202m", close = "\033[49m",
        palette = NULL))))), `#D11807` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#B2B2B2` = list(open = "\033[38;5;248m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#B2B2B2` = list(open = "\033[38;5;248m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#D11807` = list(open = "\033[48;5;160m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#D11807` = list(open = "\033[48;5;160m", close = "\033[49m",
        palette = NULL))))), `#A01813` = structure(function (...)
{
    env <- env(caller_env(), `_fn` = first_fn)
    first_call <- sys.call()
    first_call[[1]] <- quote(`_fn`)
    env$`_out` <- .Call(purrr_eval, first_call, env)
    call <- quote(`_fn`(`_out`))
    for (fn in fns) {
        env$`_fn` <- fn
        env$`_out` <- .Call(purrr_eval, call, env)
    }
    env$`_out`
}, class = c("purrr_function_compose", "function"), first_fn = structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#BFBFBF` = list(open = "\033[38;5;249m",
            close = "\033[39m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#BFBFBF` = list(open = "\033[38;5;249m", close = "\033[39m",
        palette = NULL))), fns = list(structure(function (...)
{
    txt <- paste0(...)
    nc <- num_ansi_colors()
    if (nc > 1 && length(txt) > 0) {
        mystyles <- list(`#A01813` = list(open = "\033[48;5;124m",
            close = "\033[49m", palette = NULL))
        for (st in rev(mystyles)) {
            if (!is.null(st$palette))
                st <- get_palette_color(st, nc)
            txt <- paste0(st$open, gsub(st$close, st$open, txt,
                fixed = TRUE), st$close)
        }
    }
    class(txt) <- c("cli_ansi_string", "ansi_string", "character")
    txt
}, class = c("cli_ansi_style", "ansi_style"), "`_styles`" = list(
    `#A01813` = list(open = "\033[48;5;124m", close = "\033[49m",
        palette = NULL))))))
