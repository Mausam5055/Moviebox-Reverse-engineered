.class final Lcom/apm/insight/f/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Throwable;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Z

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/f/b$1;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/apm/insight/f/b$1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apm/insight/f/b$1;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apm/insight/f/b$1;->d:Ljava/util/Map;

    iput-object p3, p0, Lcom/apm/insight/f/b$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/f/b$1;->a:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/apm/insight/f/b$1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/apm/insight/f/b$1;->c:Z

    iget-object v3, p0, Lcom/apm/insight/f/b$1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/apm/insight/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
