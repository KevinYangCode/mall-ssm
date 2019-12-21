package xyz.jianzha.mall.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Y_Kevin
 * @date 2019/6/9 - 16:21
 */
public class MyInterceptor implements HandlerInterceptor {
    /**
     * 进入方法前被执行
     * 登录拦截，权限验证等等
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //判断用户有没有登录
        Object object = request.getSession().getAttribute("UserData");
        if (object == null) {
            response.sendRedirect(request.getContextPath() + "/getCart.action");
        }
        //true放行,false拦截
        return true;
    }

    /**
     * 方法执行之后，返回ModelAndView之前被执行
     * 设置页面的共用参数等等
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

        System.out.println("MyInterceptor.postHandle.....");
    }

    /**
     * 方法执行后被执行
     * 处理异常，清资源，记录日志等等
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

        System.out.println("MyInterceptor.afterCompletion.....");
    }
}
