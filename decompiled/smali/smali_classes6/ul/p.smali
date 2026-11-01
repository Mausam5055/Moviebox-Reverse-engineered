.class public final synthetic Lul/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/accompanist/systemuicontroller/c;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/p;->a:Lcom/google/accompanist/systemuicontroller/c;

    iput-wide p2, p0, Lul/p;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lul/p;->a:Lcom/google/accompanist/systemuicontroller/c;

    iget-wide v1, p0, Lul/p;->b:J

    invoke-static {v0, v1, v2}, Lul/w;->a(Lcom/google/accompanist/systemuicontroller/c;J)V

    return-void
.end method
