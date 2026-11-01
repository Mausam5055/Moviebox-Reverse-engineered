.class final Lcom/apm/insight/f/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:[Ljava/lang/StackTraceElement;

.field private synthetic b:I

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>([Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/f/b$3;->a:[Ljava/lang/StackTraceElement;

    const/4 p1, 0x5

    iput p1, p0, Lcom/apm/insight/f/b$3;->b:I

    iput-object p2, p0, Lcom/apm/insight/f/b$3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/apm/insight/f/b$3;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apm/insight/f/b$3;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/apm/insight/f/b$3;->a:[Ljava/lang/StackTraceElement;

    iget v1, p0, Lcom/apm/insight/f/b$3;->b:I

    iget-object v2, p0, Lcom/apm/insight/f/b$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apm/insight/f/b$3;->d:Ljava/lang/String;

    const-string v4, "core_exception_monitor"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/apm/insight/f/b;->a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
