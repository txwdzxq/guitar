package com.mi.stream.guitar.web.controller.error;

import com.mi.stream.guitar.web.controller.base.BaseController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * error controller
 *
 * @author mi zxq
 * @date 2019/9/15 8:59
 */
@Controller
public class WebErrorController extends BaseController<String> implements ErrorController {
    private static final Logger logger = LoggerFactory.getLogger(WebErrorController.class);
    
    @GetMapping(value = "/error")
    @ResponseBody
    public Object handleError() {
        Object attribute = request.getAttribute("javax.servlet.error.status_code");
        if (attribute == null) {
            return "status code is null";
        }
        try {
            HttpStatus httpStatus = HttpStatus.valueOf(Integer.parseInt(attribute.toString()));
            //todo error
            switch (httpStatus) {
                case UNAUTHORIZED:
                    return httpStatus;
                case FORBIDDEN:
                    return httpStatus;
                case NOT_FOUND:
                    return httpStatus;
                case METHOD_NOT_ALLOWED:
                    return httpStatus;
                case INTERNAL_SERVER_ERROR:
                    return httpStatus;
                default:
                    return "unknown status code" + httpStatus;
            }
        } catch (IllegalArgumentException e) {
            logger.error(e.getClass().getName() + "=", e);
        }
        return HttpStatus.INTERNAL_SERVER_ERROR.getReasonPhrase();
    }
    
    /**
     * Returns the path of the error page.
     *
     * @return the error path
     */
    @Override
    public String getErrorPath() {
        return "error";
    }
}
