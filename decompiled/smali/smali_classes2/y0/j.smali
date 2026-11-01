.class public final synthetic Ly0/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly0/h$e;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ly0/h$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/j;->a:Ly0/h$e;

    iput p2, p0, Ly0/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly0/j;->a:Ly0/h$e;

    iget v1, p0, Ly0/j;->b:I

    invoke-static {v0, v1}, Ly0/h$e;->b(Ly0/h$e;I)V

    return-void
.end method
