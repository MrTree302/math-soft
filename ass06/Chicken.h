/**
 * @file   Chicken.h
 * @author Tree YD <mrtree@ubuntu>
 * @date   Sat Jul  8 20:45:48 2023
 * @version 1.0
 * @brief  This is a very smart class.
 * 
 * 
 */

#include <iostream>

/**
 * Chicken is a kind of powerful animal.
 * 
 */
class Chicken
{
private:
    int ID;			/**< Every chicken has a ID no. */
    int age;		/**< The age of a chicken. */
    double weight;		/**< The weight of a chicken. */
public:
    /** 
     * Construct a chicken.
     * 
     * @param _I to set the ID.
     * @param _a to set the age.
     * @param _w to set the weight.
     */
    Chicken(int _I, int _a, double _w);

    /** 
     * Chicken will never die!
     * 
     */
    ~Chicken();

    /** 
     * Obviously a Chicken will sing...
     * 
     */
    void sing ();
};
