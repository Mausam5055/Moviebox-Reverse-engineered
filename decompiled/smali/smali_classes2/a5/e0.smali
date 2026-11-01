.class public La5/e0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# static fields
.field public static final b:La5/e0;


# instance fields
.field private final a:Ljava/lang/reflect/Member;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/e0;

    invoke-direct {v0}, La5/e0;-><init>()V

    sput-object v0, La5/e0;->b:La5/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La5/e0;->a:Ljava/lang/reflect/Member;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Member;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/e0;->a:Ljava/lang/reflect/Member;

    return-void
.end method


# virtual methods
.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    iget-object p3, p0, La5/e0;->a:Ljava/lang/reflect/Member;

    if-nez p3, :cond_0

    iget-object p1, p1, La5/o0;->k:La5/j1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, La5/j1;->v(Ljava/lang/Enum;)V

    return-void

    :cond_0
    :try_start_0
    instance-of p4, p3, Ljava/lang/reflect/Field;

    if-eqz p4, :cond_1

    check-cast p3, Ljava/lang/reflect/Field;

    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    check-cast p3, Ljava/lang/reflect/Method;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p2}, La5/o0;->A(Ljava/lang/Object;)V

    return-void

    :goto_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "getEnumValue error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
