.class final Lcom/apm/insight/f/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Ljava/lang/Throwable;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Z

.field private synthetic e:Ljava/util/Map;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/f/b$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/apm/insight/f/b$2;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/apm/insight/f/b$2;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apm/insight/f/b$2;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apm/insight/f/b$2;->e:Ljava/util/Map;

    iput-object p4, p0, Lcom/apm/insight/f/b$2;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/apm/insight/f/b$2;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/apm/insight/f/b$2;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/apm/insight/f/b$2;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/apm/insight/f/b$2;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/apm/insight/f/b$2;->d:Z

    iget-object v4, p0, Lcom/apm/insight/f/b$2;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/apm/insight/f/b$2;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/apm/insight/f/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
