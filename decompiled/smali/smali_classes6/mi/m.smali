.class public final synthetic Lmi/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lmi/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lmi/m;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lmi/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lmi/m;->c:Ljava/util/List;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Lmi/t;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
