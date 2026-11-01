.class Landroidx/lifecycle/h0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/lifecycle/c$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/h0;->a:Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/c;->c:Landroidx/lifecycle/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c;->c(Ljava/lang/Class;)Landroidx/lifecycle/c$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/c$a;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/c$a;

    iget-object v1, p0, Landroidx/lifecycle/h0;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/lifecycle/c$a;->a(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void
.end method
