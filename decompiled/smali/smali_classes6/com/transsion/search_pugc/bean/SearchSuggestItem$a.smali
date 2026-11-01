.class public final Lcom/transsion/search_pugc/bean/SearchSuggestItem$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/bean/SearchSuggestItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/search_pugc/bean/SearchSuggestItem;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/search_pugc/bean/SearchSuggestItem;
    .locals 0

    new-array p1, p1, [Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem$a;->b(I)[Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    move-result-object p1

    return-object p1
.end method
