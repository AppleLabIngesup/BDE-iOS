//
//  CIViewControllerEvenement.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerEvenement.h"
#import "IIViewDeckController.h"
#import "CICellEvenement.h"


@interface CIViewControllerEvenement ()

@end

@implementation CIViewControllerEvenement

@synthesize menuDesc, onglets, reTableview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(IBAction)segementButton:(id)sender{

    switch (onglets.selectedSegmentIndex) {
        case 0:{
            NSDictionary *desc = [[NSDictionary alloc] initWithObjectsAndKeys:@"Actualité",@"cat",@"news.png",@"img",nil];
            NSDictionary *desc1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Évènements",@"cat",@"event.png",@"img",nil];
            NSDictionary *desc2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Photos",@"cat",@"photos.png",@"img",nil];
            NSDictionary *desc3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Partenaires",@"cat",@"partners.png",@"img",nil];
            NSDictionary *desc4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Accueil",@"cat",@"home.png",@"img",nil];
            
            //array menu complet
            menuDesc = [[NSArray alloc] initWithObjects:desc,desc1,desc2,desc3,desc4,nil];
            [self.reTableview reloadData];
            break;
        }
        case 1:{
            
            NSDictionary *desc = [[NSDictionary alloc] initWithObjectsAndKeys:@"Actualité",@"cat",@"news.png",@"img",nil];
            NSDictionary *desc1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Évènements",@"cat",@"event.png",@"img",nil];
            NSDictionary *desc4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Accueil",@"cat",@"home.png",@"img",nil];
            
            //array menu complet
            menuDesc = [[NSArray alloc] initWithObjects:desc,desc1,desc4,nil];

            [self.reTableview reloadData];
            break;
        }
        default:
            NSLog(@"default case => O");
            break;
    }

}



- (void)viewDidLoad
{
    [super viewDidLoad];

        
        NSDictionary *desc = [[NSDictionary alloc] initWithObjectsAndKeys:@"Actualité",@"cat",@"news.png",@"img",nil];
        NSDictionary *desc1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Évènements",@"cat",@"event.png",@"img",nil];
        NSDictionary *desc2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Photos",@"cat",@"photos.png",@"img",nil];
        NSDictionary *desc3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Partenaires",@"cat",@"partners.png",@"img",nil];
        NSDictionary *desc4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Accueil",@"cat",@"home.png",@"img",nil];
        
        //array menu complet
        menuDesc = [[NSArray alloc] initWithObjects:desc,desc1,desc2,desc3,desc4,nil];
        
    
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// return la hauteur de la cellule custom
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [menuDesc count];
    if (onglets.selectedSegmentIndex == 0) {
        NSLog(@" j'ai beuacoup de %d",[menuDesc count]);
            return [menuDesc count];
            
    }
    if (onglets.selectedSegmentIndex == 1) {
                NSLog(@" j'ai beuacoup de %d",[menuDesc count]);
        return [menuDesc count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CICellEvenement";
    //on utilise notre cellules personaliser
    CICellEvenement *cell = (CICellEvenement *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        //chargement de la cellule custom
        NSArray *ixb = [[NSBundle mainBundle] loadNibNamed:@"CICellEvenement" owner:self options:nil];
        
        //parcourir les objets du xib
        for(id oneObject in ixb){
            
            if ([oneObject isKindOfClass:[CICellEvenement class]]) {
                cell = (CICellEvenement *)oneObject;
            }
        }
    }
    
    NSDictionary *current = [menuDesc objectAtIndex:indexPath.row];
    
    /*[cell.imageView setFrame:CGRectMake(20, 0, 0, 0)];
    
    [cell.titleCat setText:[current objectForKey:@"cat"]];
    [cell.imgCat setImage:[UIImage imageNamed:[current objectForKey:@"img"]]];
    [cell.titleCat setTextColor:[UIColor blackColor]];
    [cell.imgCat setFrame:CGRectMake(20, 15, 30, 30)];
    [cell.titleCat setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20.0f]];
    
    
    UIView *theView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 70)];
    */
    [cell.descEvent setText:[current objectForKey:@"cat"]];
    [cell.imgDescEvent setImage:[UIImage imageNamed:[current objectForKey:@"img"]]];
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
}


- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
- (void)viewDidUnload {
    [self setOnglets:nil];
    [self setReTableview:nil];
    [super viewDidUnload];
}
@end
