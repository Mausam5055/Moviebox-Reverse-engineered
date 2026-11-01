.class public Lz4/g3;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/b2;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/g3;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    iget-object p2, p0, Lz4/g3;->a:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ly4/a;->V(Lz4/f3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "craete instance error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
