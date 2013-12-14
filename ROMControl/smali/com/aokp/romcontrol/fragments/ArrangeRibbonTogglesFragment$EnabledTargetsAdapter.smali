.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ArrangeRibbonTogglesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnabledTargetsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    .line 152
    const v0, 0x1020014

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 153
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->useRightSideLayout()Z
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->access$200(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f040011

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 165
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, titleView:Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    .local v0, descriptionView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {v2, p1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {v2, p1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-object p2

    .line 158
    .end local v0           #descriptionView:Landroid/widget/TextView;
    .end local v1           #titleView:Landroid/widget/TextView;
    :cond_1
    const v2, 0x7f040012

    goto :goto_0
.end method
