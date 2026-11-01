.class public final Lw10/a;
.super Lretrofit2/k$a;


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/k$a;-><init>()V

    iput-object p1, p0, Lw10/a;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static f()Lw10/a;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lw10/a;->g(Lcom/google/gson/Gson;)Lw10/a;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/google/gson/Gson;)Lw10/a;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lw10/a;

    invoke-direct {v0, p0}, Lw10/a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    iget-object p2, p0, Lw10/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lw10/b;

    iget-object p3, p0, Lw10/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lw10/b;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    iget-object p2, p0, Lw10/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lw10/c;

    iget-object p3, p0, Lw10/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lw10/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
