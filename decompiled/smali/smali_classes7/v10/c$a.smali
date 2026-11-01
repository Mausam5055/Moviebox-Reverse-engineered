.class final Lv10/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv10/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lretrofit2/d;

.field private volatile b:Z


# direct methods
.method constructor <init>(Lretrofit2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv10/c$a;->a:Lretrofit2/d;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv10/c$a;->b:Z

    iget-object v0, p0, Lv10/c$a;->a:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lv10/c$a;->b:Z

    return v0
.end method
