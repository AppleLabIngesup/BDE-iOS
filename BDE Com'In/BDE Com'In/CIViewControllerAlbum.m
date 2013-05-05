//
//  CIViewControllerAlbum.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerAlbum.h"
#import "CICellViewLeft.h"
#import "CIControllerCellAlbum.h"
#import "IIViewDeckController.h"
#import "CICellCustomAlbum.h"

@interface CIViewControllerAlbum ()

@end

@implementation CIViewControllerAlbum

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Wall", @"Wall");
        self.tabBarItem.image = [UIImage imageNamed:@"globe"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//retourne la hauteur de la cellule
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    //return [timeline count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CICellCustomAlbum";
    
    CICellCustomAlbum *cell = (CICellCustomAlbum *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        //chargement de la cellule custom
        NSArray *ixb = [[NSBundle mainBundle] loadNibNamed:@"CICellCustomAlbum" owner:self options:nil];
        
        //parcourir les objets du xib
        for(id oneObject in ixb){
            
            if ([oneObject isKindOfClass:[CICellCustomAlbum class]]) {
                
                cell = (CICellCustomAlbum *)oneObject;
            }
        }
    }
    
    // Configure the cell...
   // cell.titreTweet.text = timeline[indexPath.row][@"text"];
    //cell.nameUser.text = timeline[indexPath.row][@"user"][@"screen_name"];
    //[cell.imageView setImageWithURL:[NSURL URLWithString:timeline[indexPath.row][@"user"][@"profile_image_url"]]];
    
    
    
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
   // DetailViewController *detail = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    //NSDictionary *current2 = [timeline objectAtIndex:indexPath.row];
    //detail.detailTwitter = current2;
    //[self.navigation pushViewController:detail animated:YES];
    
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}


@end
