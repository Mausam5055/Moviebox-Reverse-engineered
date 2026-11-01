.class public final synthetic Lcom/transsion/publish/viewmodel/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->c()Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object v0

    return-object v0
.end method
