.class final Lcom/apm/insight/g/a$1;
.super Lcom/apm/insight/l/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/g/a;->a(Ljava/io/File;Ljava/lang/Throwable;Ljava/lang/Thread;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/apm/insight/g/a;


# direct methods
.method constructor <init>(Lcom/apm/insight/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/g/a$1;->b:Lcom/apm/insight/g/a;

    invoke-direct {p0}, Lcom/apm/insight/l/e$a;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apm/insight/g/a$1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/apm/insight/g/a$1;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "android.os.Looper.loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/apm/insight/g/a$1;->a:Z

    :cond_0
    iget-boolean p1, p0, Lcom/apm/insight/g/a$1;->a:Z

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
