.class public final synthetic Lhj/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhj/h;->a:I

    iput-object p2, p0, Lhj/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lhj/h;->a:I

    iget-object v1, p0, Lhj/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lhj/i;->b(ILjava/lang/String;)V

    return-void
.end method
