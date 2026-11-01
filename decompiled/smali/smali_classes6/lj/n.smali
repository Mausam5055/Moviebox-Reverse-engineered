.class public final synthetic Llj/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/n;->a:Ljava/lang/String;

    iput-object p2, p0, Llj/n;->b:Ljava/lang/String;

    iput-object p3, p0, Llj/n;->c:Ljava/lang/String;

    iput-object p4, p0, Llj/n;->d:Ljava/lang/String;

    iput-object p5, p0, Llj/n;->e:Ljava/lang/Integer;

    iput-object p6, p0, Llj/n;->f:Ljava/lang/String;

    iput-object p7, p0, Llj/n;->g:Ljava/lang/String;

    iput-object p8, p0, Llj/n;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Llj/n;->a:Ljava/lang/String;

    iget-object v1, p0, Llj/n;->b:Ljava/lang/String;

    iget-object v2, p0, Llj/n;->c:Ljava/lang/String;

    iget-object v3, p0, Llj/n;->d:Ljava/lang/String;

    iget-object v4, p0, Llj/n;->e:Ljava/lang/Integer;

    iget-object v5, p0, Llj/n;->f:Ljava/lang/String;

    iget-object v6, p0, Llj/n;->g:Ljava/lang/String;

    iget-object v7, p0, Llj/n;->h:Ljava/lang/String;

    move-object v8, p1

    check-cast v8, Lz3/b;

    invoke-static/range {v0 .. v8}, Llj/l0;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
