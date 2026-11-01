.class public final synthetic Lt1/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt1/g$c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lt1/g$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/h;->a:Lt1/g$c;

    iput p2, p0, Lt1/h;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt1/h;->a:Lt1/g$c;

    iget v1, p0, Lt1/h;->b:I

    invoke-static {v0, v1}, Lt1/g$c;->a(Lt1/g$c;I)V

    return-void
.end method
