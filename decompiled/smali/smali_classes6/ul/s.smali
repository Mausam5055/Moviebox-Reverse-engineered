.class public final synthetic Lul/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/s;->a:Lcom/transsion/home/bean/Item;

    iput-object p2, p0, Lul/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lul/s;->c:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lul/s;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lul/s;->a:Lcom/transsion/home/bean/Item;

    iget-object v1, p0, Lul/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lul/s;->c:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Lul/s;->d:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lul/w;->c(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
