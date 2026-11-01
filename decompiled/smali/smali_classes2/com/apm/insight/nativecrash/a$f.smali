.class public final Lcom/apm/insight/nativecrash/a$f;
.super Lcom/apm/insight/nativecrash/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/nativecrash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private synthetic e:Lcom/apm/insight/nativecrash/a;


# direct methods
.method constructor <init>(Lcom/apm/insight/nativecrash/a;)V
    .locals 1

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$f;->e:Lcom/apm/insight/nativecrash/a;

    invoke-direct {p0, p1}, Lcom/apm/insight/nativecrash/a$e;-><init>(Lcom/apm/insight/nativecrash/a;)V

    const-string v0, "Total Threads Count:"

    iput-object v0, p0, Lcom/apm/insight/nativecrash/a$e;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/apm/insight/nativecrash/a;->a(Lcom/apm/insight/nativecrash/a;)Lcom/apm/insight/nativecrash/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/a$b;->b()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/j;->j(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$e;->a:Ljava/io/File;

    const-string p1, ":"

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$e;->c:Ljava/lang/String;

    const/4 p1, -0x2

    iput p1, p0, Lcom/apm/insight/nativecrash/a$e;->d:I

    return-void
.end method
