.class public final synthetic Lvc/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvc/k;

.field public final synthetic b:Lvc/c;


# direct methods
.method public synthetic constructor <init>(Lvc/k;Lvc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/j;->a:Lvc/k;

    iput-object p2, p0, Lvc/j;->b:Lvc/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvc/j;->a:Lvc/k;

    iget-object v1, p0, Lvc/j;->b:Lvc/c;

    invoke-static {v0, v1}, Lvc/k;->b(Lvc/k;Lvc/c;)V

    return-void
.end method
