package retrofit2;

import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class HttpException extends RuntimeException {
    private final int code;
    private final String message;
    private final transient j0<?> response;

    public HttpException(j0<?> j0Var) {
        super(getMessage(j0Var));
        this.code = j0Var.b();
        this.message = j0Var.f();
        this.response = j0Var;
    }

    private static String getMessage(j0<?> j0Var) {
        Objects.requireNonNull(j0Var, "response == null");
        return "HTTP " + j0Var.b() + " " + j0Var.f();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public j0<?> response() {
        return this.response;
    }
}
