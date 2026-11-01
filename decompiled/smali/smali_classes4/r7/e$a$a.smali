.class Lr7/e$a$a;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr7/e$a;


# direct methods
.method constructor <init>(Lr7/e$a;)V
    .locals 0

    iput-object p1, p0, Lr7/e$a$a;->a:Lr7/e$a;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/text/SimpleDateFormat;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lr7/e$a$a;->a:Lr7/e$a;

    iget-object v1, v1, Lr7/e$a;->c:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr7/e$a$a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
