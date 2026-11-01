.class Lorg/jsoup/nodes/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lf10/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/j;->S(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/jsoup/nodes/j;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/j$a;->b:Lorg/jsoup/nodes/j;

    iput-object p2, p0, Lorg/jsoup/nodes/j$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/j;I)V
    .locals 0

    return-void
.end method

.method public b(Lorg/jsoup/nodes/j;I)V
    .locals 0

    iget-object p2, p0, Lorg/jsoup/nodes/j$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/j;->s(Ljava/lang/String;)V

    return-void
.end method
